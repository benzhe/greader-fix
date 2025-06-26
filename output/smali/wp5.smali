.class public final synthetic Lwp5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lxp5;

.field public final f:Ljava/lang/Object;

.field public final g:Lzo5;


# direct methods
.method public constructor <init>(Lxp5;Ljava/lang/Object;Lzo5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwp5;->e:Lxp5;

    iput-object p2, p0, Lwp5;->f:Ljava/lang/Object;

    iput-object p3, p0, Lwp5;->g:Lzo5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lwp5;->e:Lxp5;

    iget-object v1, p0, Lwp5;->f:Ljava/lang/Object;

    iget-object v2, p0, Lwp5;->g:Lzo5;

    .line 1
    iget-boolean v3, v0, Lxp5;->c:Z

    if-nez v3, :cond_0

    .line 2
    iget-object v0, v0, Lxp5;->b:Lvo5;

    invoke-interface {v0, v1, v2}, Lvo5;->a(Ljava/lang/Object;Lzo5;)V

    :cond_0
    return-void
.end method
