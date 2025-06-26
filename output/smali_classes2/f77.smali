.class public Lf77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ld77;


# direct methods
.method public constructor <init>(Ld77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf77;->e:Ld77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf77;->e:Ld77;

    .line 2
    iget-object v0, v0, Ld77;->u:Lj37;

    .line 3
    iget-object v0, v0, Lj37;->a:Li37;

    .line 4
    sget-object v1, Li37;->g:Li37;

    if-eq v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lf77;->e:Ld77;

    .line 6
    iget-object v1, v0, Ld77;->k:Lb57;

    invoke-virtual {v1}, Lb57;->d()V

    .line 7
    iget-object v1, v0, Ld77;->p:Lb57$c;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lb57$c;->a()V

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Ld77;->p:Lb57$c;

    .line 10
    iput-object v1, v0, Ld77;->n:Ln57;

    .line 11
    :cond_1
    iget-object v0, p0, Lf77;->e:Ld77;

    .line 12
    iget-object v0, v0, Ld77;->j:Lz27;

    .line 13
    sget-object v1, Lz27$a;->f:Lz27$a;

    const-string v2, "CONNECTING; backoff interrupted"

    invoke-virtual {v0, v1, v2}, Lz27;->a(Lz27$a;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lf77;->e:Ld77;

    sget-object v1, Li37;->e:Li37;

    invoke-static {v0, v1}, Ld77;->h(Ld77;Li37;)V

    .line 15
    iget-object v0, p0, Lf77;->e:Ld77;

    invoke-static {v0}, Ld77;->i(Ld77;)V

    return-void
.end method
