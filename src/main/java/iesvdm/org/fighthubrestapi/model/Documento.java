package iesvdm.org.fighthubrestapi.model;

import java.util.Objects;

public class Documento {

    private long id;
    private String nombre;

    public Documento() {
    }

    public Documento(long id, String nombre) {
        this.id = id;
        this.nombre = nombre;

    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Documento documento = (Documento) o;
        return id == documento.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "Documento{" +
                "id=" + id +
                ", nombre='" + nombre + '\'' +
                '}';
    }
}
