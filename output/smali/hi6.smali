.class public final synthetic Lhi6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfj4$a;


# instance fields
.field public final a:Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

.field public final b:J

.field public final c:Z

.field public final d:Lnh4;

.field public final e:Lxp4$d;

.field public final f:Lxp4$c;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;JZLnh4;Lxp4$d;Lxp4$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhi6;->a:Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

    iput-wide p2, p0, Lhi6;->b:J

    iput-boolean p4, p0, Lhi6;->c:Z

    iput-object p5, p0, Lhi6;->d:Lnh4;

    iput-object p6, p0, Lhi6;->e:Lxp4$d;

    iput-object p7, p0, Lhi6;->f:Lxp4$c;

    return-void
.end method


# virtual methods
.method public final a()Lgp4$a;
    .locals 10

    iget-object v0, p0, Lhi6;->a:Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;

    iget-wide v1, p0, Lhi6;->b:J

    iget-boolean v3, p0, Lhi6;->c:Z

    iget-object v4, p0, Lhi6;->d:Lnh4;

    iget-object v5, p0, Lhi6;->e:Lxp4$d;

    iget-object v6, p0, Lhi6;->f:Lxp4$c;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lxp4;->p()Lxp4$a;

    move-result-object v7

    iget-object v0, v0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->e:Lai6;

    .line 3
    invoke-virtual {v0}, Lai6;->a()Llp4;

    move-result-object v0

    .line 4
    iget-boolean v8, v7, Lpk4$b;->g:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 5
    invoke-virtual {v7}, Lpk4$b;->f()V

    .line 6
    iput-boolean v9, v7, Lpk4$b;->g:Z

    .line 7
    :cond_0
    iget-object v8, v7, Lpk4$b;->f:Lpk4;

    check-cast v8, Lxp4;

    invoke-static {v8, v0}, Lxp4;->s(Lxp4;Llp4;)V

    .line 8
    invoke-static {}, Lip4;->p()Lip4$a;

    move-result-object v0

    .line 9
    iget-boolean v8, v0, Lpk4$b;->g:Z

    if-eqz v8, :cond_1

    .line 10
    invoke-virtual {v0}, Lpk4$b;->f()V

    .line 11
    iput-boolean v9, v0, Lpk4$b;->g:Z

    .line 12
    :cond_1
    iget-object v8, v0, Lpk4$b;->f:Lpk4;

    check-cast v8, Lip4;

    invoke-static {v8, v1, v2}, Lip4;->q(Lip4;J)V

    .line 13
    iget-boolean v1, v0, Lpk4$b;->g:Z

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v0}, Lpk4$b;->f()V

    .line 15
    iput-boolean v9, v0, Lpk4$b;->g:Z

    .line 16
    :cond_2
    iget-object v1, v0, Lpk4$b;->f:Lpk4;

    check-cast v1, Lip4;

    invoke-static {v1, v3}, Lip4;->t(Lip4;Z)V

    .line 17
    iget-boolean v1, v0, Lpk4$b;->g:Z

    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {v0}, Lpk4$b;->f()V

    .line 19
    iput-boolean v9, v0, Lpk4$b;->g:Z

    .line 20
    :cond_3
    iget-object v1, v0, Lpk4$b;->f:Lpk4;

    check-cast v1, Lip4;

    invoke-static {v1, v4}, Lip4;->s(Lip4;Lnh4;)V

    .line 21
    invoke-virtual {v7, v0}, Lxp4$a;->k(Lip4$a;)Lxp4$a;

    if-eqz v5, :cond_5

    .line 22
    iget-boolean v0, v7, Lpk4$b;->g:Z

    if-eqz v0, :cond_4

    .line 23
    invoke-virtual {v7}, Lpk4$b;->f()V

    .line 24
    iput-boolean v9, v7, Lpk4$b;->g:Z

    .line 25
    :cond_4
    iget-object v0, v7, Lpk4$b;->f:Lpk4;

    check-cast v0, Lxp4;

    invoke-static {v0, v5}, Lxp4;->u(Lxp4;Lxp4$d;)V

    :cond_5
    if-eqz v6, :cond_7

    .line 26
    iget-boolean v0, v7, Lpk4$b;->g:Z

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {v7}, Lpk4$b;->f()V

    .line 28
    iput-boolean v9, v7, Lpk4$b;->g:Z

    .line 29
    :cond_6
    iget-object v0, v7, Lpk4$b;->f:Lpk4;

    check-cast v0, Lxp4;

    invoke-static {v0, v6}, Lxp4;->t(Lxp4;Lxp4$c;)V

    .line 30
    :cond_7
    invoke-static {}, Lgp4;->w()Lgp4$a;

    move-result-object v0

    .line 31
    iget-boolean v1, v0, Lpk4$b;->g:Z

    if-eqz v1, :cond_8

    .line 32
    invoke-virtual {v0}, Lpk4$d;->f()V

    .line 33
    iput-boolean v9, v0, Lpk4$b;->g:Z

    .line 34
    :cond_8
    iget-object v1, v0, Lpk4$b;->f:Lpk4;

    check-cast v1, Lgp4;

    invoke-static {v1}, Lgp4;->s(Lgp4;)V

    .line 35
    invoke-virtual {v0, v7}, Lgp4$a;->k(Lxp4$a;)Lgp4$a;

    return-object v0
.end method
