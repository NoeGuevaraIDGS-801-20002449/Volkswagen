using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace VolksWagenAPI.Models
{
    public partial class VolksWagenContext : DbContext
    {
        public VolksWagenContext()
        {
        }

        public VolksWagenContext(DbContextOptions<VolksWagenContext> options)
            : base(options)
        {
        }

        public virtual DbSet<ErrorHerramientum> ErrorHerramienta { get; set; } = null!;
        public virtual DbSet<ErrorLineaProduccion> ErrorLineaProduccions { get; set; } = null!;
        public virtual DbSet<ErrorPersonal> ErrorPersonals { get; set; } = null!;
        public virtual DbSet<Errore> Errores { get; set; } = null!;
        public virtual DbSet<Usuario> Usuarios { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Data Source=HERICK\\SQLEXPRESS;Initial Catalog=VolksWagen;Integrated Security=True");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ErrorHerramientum>(entity =>
            {
                entity.ToTable("error_herramienta");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.CausaRaíz)
                    .HasColumnType("text")
                    .HasColumnName("causa_raíz");

                entity.Property(e => e.Descripción)
                    .HasColumnType("text")
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

                entity.Property(e => e.Hora).HasColumnName("hora");

                entity.Property(e => e.Impacto)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("impacto");

                entity.Property(e => e.Nivel).HasColumnName("nivel");

                entity.Property(e => e.NotasSolución)
                    .HasColumnType("text")
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

                entity.HasOne(d => d.IdNavigation)
                    .WithOne(p => p.ErrorHerramientum)
                    .HasForeignKey<ErrorHerramientum>(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__error_herram__id__2B3F6F97");
            });

            modelBuilder.Entity<ErrorLineaProduccion>(entity =>
            {
                entity.ToTable("error_linea_produccion");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.CausaRaíz)
                    .HasColumnType("text")
                    .HasColumnName("causa_raíz");

                entity.Property(e => e.Descripción)
                    .HasColumnType("text")
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

                entity.Property(e => e.Hora).HasColumnName("hora");

                entity.Property(e => e.Impacto)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("impacto");

                entity.Property(e => e.Nivel).HasColumnName("nivel");

                entity.Property(e => e.NotasSolución)
                    .HasColumnType("text")
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

                entity.HasOne(d => d.IdNavigation)
                    .WithOne(p => p.ErrorLineaProduccion)
                    .HasForeignKey<ErrorLineaProduccion>(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__error_linea___id__2E1BDC42");
            });

            modelBuilder.Entity<ErrorPersonal>(entity =>
            {
                entity.ToTable("error_personal");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.CausaRaíz)
                    .HasColumnType("text")
                    .HasColumnName("causa_raíz");

                entity.Property(e => e.Descripción)
                    .HasColumnType("text")
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

                entity.Property(e => e.Hora).HasColumnName("hora");

                entity.Property(e => e.Impacto)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("impacto");

                entity.Property(e => e.Nivel).HasColumnName("nivel");

                entity.Property(e => e.NotasSolución)
                    .HasColumnType("text")
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

                entity.HasOne(d => d.IdNavigation)
                    .WithOne(p => p.ErrorPersonal)
                    .HasForeignKey<ErrorPersonal>(d => d.Id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__error_person__id__286302EC");
            });

            modelBuilder.Entity<Errore>(entity =>
            {
                entity.ToTable("errores");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.CausaRaíz)
                    .HasColumnType("text")
                    .HasColumnName("causa_raíz");

                entity.Property(e => e.Descripción)
                    .HasColumnType("text")
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

                entity.Property(e => e.Hora).HasColumnName("hora");

                entity.Property(e => e.Impacto)
                    .HasMaxLength(100)
                    .IsUnicode(false)
                    .HasColumnName("impacto");

                entity.Property(e => e.Nivel).HasColumnName("nivel");

                entity.Property(e => e.NotasSolución)
                    .HasColumnType("text")
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
                entity.HasKey(e => e.IdUsuario)
                    .HasName("PK__usuarios__4E3E04AD673FF2C1");

                entity.ToTable("usuarios");

                entity.Property(e => e.IdUsuario)
                    .ValueGeneratedNever()
                    .HasColumnName("id_usuario");

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
}
