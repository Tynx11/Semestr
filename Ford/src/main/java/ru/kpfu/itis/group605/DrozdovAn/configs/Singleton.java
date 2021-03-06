package ru.kpfu.itis.group605.DrozdovAn.configs;


import freemarker.template.Configuration;
import freemarker.template.TemplateExceptionHandler;

import javax.servlet.ServletContext;

public class Singleton {

    private static Configuration cfg = null;

    public static Configuration getConfig(ServletContext sc) {

        if (cfg == null){
            cfg = new Configuration();
            cfg.setServletContextForTemplateLoading(
                    sc,
                    "/temlates"
            );
            cfg.setTemplateExceptionHandler(
                    TemplateExceptionHandler.HTML_DEBUG_HANDLER
            );
        }

        return cfg;

    }
}