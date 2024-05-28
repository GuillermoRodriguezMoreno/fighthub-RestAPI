package iesvdm.org.fighthubrestapi;

import iesvdm.org.fighthubrestapi.storage.FilesStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class FighthubRestApiApplication implements CommandLineRunner {

    @Autowired
    FilesStorageService storageService;
    public static void main(String[] args) {

        SpringApplication.run(FighthubRestApiApplication.class, args);
    }
    @Override
    public void run(String... args) throws Exception {
        //Si quieres que arranque el proyecto siempre sin ficheros
        //storageService.deleteAll();
        //Para crear el directorio de alojamiento de los ficheros
        storageService.init();
    }
}
