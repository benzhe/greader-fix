.class public final Lzy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:J

.field public final synthetic h:Landroid/os/Bundle;

.field public final synthetic i:Z

.field public final synthetic j:Z

.field public final synthetic k:Z

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Lsz4;


# direct methods
.method public constructor <init>(Lsz4;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzy4;->m:Lsz4;

    iput-object p2, p0, Lzy4;->e:Ljava/lang/String;

    iput-object p3, p0, Lzy4;->f:Ljava/lang/String;

    iput-wide p4, p0, Lzy4;->g:J

    iput-object p6, p0, Lzy4;->h:Landroid/os/Bundle;

    iput-boolean p7, p0, Lzy4;->i:Z

    iput-boolean p8, p0, Lzy4;->j:Z

    iput-boolean p9, p0, Lzy4;->k:Z

    iput-object p10, p0, Lzy4;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lzy4;->m:Lsz4;

    iget-object v1, p0, Lzy4;->e:Ljava/lang/String;

    iget-object v2, p0, Lzy4;->f:Ljava/lang/String;

    iget-wide v3, p0, Lzy4;->g:J

    iget-object v5, p0, Lzy4;->h:Landroid/os/Bundle;

    iget-boolean v6, p0, Lzy4;->i:Z

    iget-boolean v7, p0, Lzy4;->j:Z

    iget-boolean v8, p0, Lzy4;->k:Z

    iget-object v9, p0, Lzy4;->l:Ljava/lang/String;

    .line 1
    invoke-virtual/range {v0 .. v9}, Lsz4;->C(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
