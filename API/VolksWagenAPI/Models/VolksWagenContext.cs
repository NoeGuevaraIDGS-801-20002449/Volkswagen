using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace VolkswagenAPI.Models;

public partial class VolksWagenContext : DbContext
{
    public VolksWagenContext()
    {
    }

    public VolksWagenContext(DbContextOptions<VolksWagenContext> options)
        : base(options)
    {
    }

    public virtual DbSet<ErrorHerramientum> ErrorHerramienta { get; set; }

    public virtual DbSet<ErrorLineaProduccion> ErrorLineaProduccions { get; set; }

    public virtual DbSet<ErrorPersonal> ErrorPersonals { get; set; }

    public virtual DbSet<Errore> Errores { get; set; }

    public virtual DbSet<Usuario> Usuarios { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=NOEGUEVARA;Initial Catalog=VolksWagen;Integrated Security=True;TrustServerCertificate=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<ErrorHerramientum>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__error_he__3213E83F820F9CB8");

            entity.ToTable("error_herramienta");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.CausaRaíz)
                .IsUnicode(false)
                .HasColumnName("causa_raíz");
            entity.Property(e => e.Descripción)
                .IsUnicode(false)
                .HasColumnName("descripción");
            entity.Property(e => e.Estado)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("estado");
            entity.Property(e => e.Fecha)
                .HasColumnType("date")
                .HasColumnName("fecha");
            entity.Property(e => e.Frecuencia)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("frecuencia");
            entity.Property(e => e.Hora)
                .HasMaxLength(10)
                .IsUnicode(false)
                .HasColumnName("hora");
            entity.Property(e => e.Impacto)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("impacto");
            entity.Property(e => e.Nivel).HasColumnName("nivel");
            entity.Property(e => e.NotasSolución)
                .IsUnicode(false)
                .HasColumnName("notas_solución");
            entity.Property(e => e.Prioridad)
                .HasMaxLength(10)
                .IsUnicode(false)
                .HasColumnName("prioridad");
            entity.Property(e => e.TipoError)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("tipo_error");
            entity.Property(e => e.UsuarioReporte)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("usuario_reporte");
        });

        modelBuilder.Entity<ErrorLineaProduccion>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__error_li__3213E83FD71A14D5");

            entity.ToTable("error_linea_produccion");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.CausaRaíz)
                .IsUnicode(false)
                .HasColumnName("causa_raíz");
            entity.Property(e => e.Descripción)
                .IsUnicode(false)
                .HasColumnName("descripción");
            entity.Property(e => e.Estado)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("estado");
            entity.Property(e => e.Fecha)
                .HasColumnType("date")
                .HasColumnName("fecha");
            entity.Property(e => e.Frecuencia)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("frecuencia");
            entity.Property(e => e.Hora)
                .HasMaxLength(10)
                .IsUnicode(false)
                .HasColumnName("hora");
            entity.Property(e => e.Impacto)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("impacto");
            entity.Property(e => e.Nivel).HasColumnName("nivel");
            entity.Property(e => e.NotasSolución)
                .IsUnicode(false)
                .HasColumnName("notas_solución");
            entity.Property(e => e.Prioridad)
                .HasMaxLength(10)
                .IsUnicode(false)
                .HasColumnName("prioridad");
            entity.Property(e => e.TipoError)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("tipo_error");
            entity.Property(e => e.UsuarioReporte)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("usuario_reporte");
        });

        modelBuilder.Entity<ErrorPersonal>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__error_pe__3213E83FB2F07231");

            entity.ToTable("error_personal");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.CausaRaíz)
                .IsUnicode(false)
                .HasColumnName("causa_raíz");
            entity.Property(e => e.Descripción)
                .IsUnicode(false)
                .HasColumnName("descripción");
            entity.Property(e => e.Estado)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("estado");
            entity.Property(e => e.Fecha)
                .HasColumnType("date")
                .HasColumnName("fecha");
            entity.Property(e => e.Frecuencia)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("frecuencia");
            entity.Property(e => e.Hora)
                .HasMaxLength(10)
                .IsUnicode(false)
                .HasColumnName("hora");
            entity.Property(e => e.Impacto)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("impacto");
            entity.Property(e => e.Nivel).HasColumnName("nivel");
            entity.Property(e => e.NotasSolución)
                .IsUnicode(false)
                .HasColumnName("notas_solución");
            entity.Property(e => e.Prioridad)
                .HasMaxLength(10)
                .IsUnicode(false)
                .HasColumnName("prioridad");
            entity.Property(e => e.TipoError)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("tipo_error");
            entity.Property(e => e.UsuarioReporte)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("usuario_reporte");
        });

        modelBuilder.Entity<Errore>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__errores__3213E83FFB70C353");

            entity.ToTable("errores");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.CausaRaíz)
                .IsUnicode(false)
                .HasColumnName("causa_raíz");
            entity.Property(e => e.Descripción)
                .IsUnicode(false)
                .HasColumnName("descripción");
            entity.Property(e => e.Estado)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("estado");
            entity.Property(e => e.Fecha)
                .HasColumnType("date")
                .HasColumnName("fecha");
            entity.Property(e => e.Frecuencia)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("frecuencia");
            entity.Property(e => e.Hora)
                .HasMaxLength(10)
                .IsUnicode(false)
                .HasColumnName("hora");
            entity.Property(e => e.Impacto)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("impacto");
            entity.Property(e => e.Nivel).HasColumnName("nivel");
            entity.Property(e => e.NotasSolución)
                .IsUnicode(false)
                .HasColumnName("notas_solución");
            entity.Property(e => e.Prioridad)
                .HasMaxLength(10)
                .IsUnicode(false)
                .HasColumnName("prioridad");
            entity.Property(e => e.TipoError)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("tipo_error");
            entity.Property(e => e.UsuarioReporte)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("usuario_reporte");
        });

        modelBuilder.Entity<Usuario>(entity =>
        {
            entity.HasKey(e => e.IdUsuario).HasName("PK__usuarios__4E3E04AD18A32D3C");

            entity.ToTable("usuarios");

            entity.Property(e => e.IdUsuario).HasColumnName("id_usuario");
            entity.Property(e => e.Contraseña)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("contraseña");
            entity.Property(e => e.Estatus)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("estatus");
            entity.Property(e => e.NombreUsuario)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("nombre_usuario");
            entity.Property(e => e.Rol)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("rol");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
