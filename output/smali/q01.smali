.class public final Lq01;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lli2<",
            "Lgp1;",
            "Ldp1;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lej2;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lgl2;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lzj2;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lnk2;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lik2;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lpz0;


# direct methods
.method public constructor <init>(Lpz0;Landroid/content/Context;Ljava/lang/String;Loz0;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lq01;->i:Lpz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p4, Lfb3;

    const-string v0, "instance cannot be null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-direct {p4, p2}, Lfb3;-><init>(Ljava/lang/Object;)V

    .line 5
    iput-object p4, p0, Lq01;->a:Lmb3;

    .line 6
    iget-object p2, p1, Lpz0;->k0:Lmb3;

    .line 7
    iget-object v0, p1, Lpz0;->l0:Lmb3;

    .line 8
    new-instance v1, Lti2;

    invoke-direct {v1, p4, p2, v0}, Lti2;-><init>(Lmb3;Lmb3;Lmb3;)V

    .line 9
    iput-object v1, p0, Lq01;->b:Lmb3;

    .line 10
    new-instance p4, Lyj2;

    invoke-direct {p4, p2}, Lyj2;-><init>(Lmb3;)V

    .line 11
    sget-object p2, Ldb3;->c:Ljava/lang/Object;

    .line 12
    instance-of p2, p4, Ldb3;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p2, Ldb3;

    invoke-direct {p2, p4}, Ldb3;-><init>(Lmb3;)V

    move-object p4, p2

    .line 14
    :goto_0
    iput-object p4, p0, Lq01;->c:Lmb3;

    .line 15
    sget-object p2, Lil2;->a:Ljl2;

    .line 16
    instance-of p4, p2, Ldb3;

    if-eqz p4, :cond_1

    move-object v7, p2

    goto :goto_1

    .line 17
    :cond_1
    new-instance p4, Ldb3;

    invoke-direct {p4, p2}, Ldb3;-><init>(Lmb3;)V

    move-object v7, p4

    .line 18
    :goto_1
    iput-object v7, p0, Lq01;->d:Lmb3;

    .line 19
    iget-object v1, p0, Lq01;->a:Lmb3;

    .line 20
    iget-object v2, p1, Lpz0;->o:Lmb3;

    .line 21
    iget-object v3, p1, Lpz0;->H:Lmb3;

    .line 22
    iget-object v4, p0, Lq01;->b:Lmb3;

    iget-object v5, p0, Lq01;->c:Lmb3;

    sget-object v6, Lol2;->a:Lml2;

    .line 23
    new-instance p1, Ljk2;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ljk2;-><init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V

    .line 24
    instance-of p2, p1, Ldb3;

    if-eqz p2, :cond_2

    goto :goto_2

    .line 25
    :cond_2
    new-instance p2, Ldb3;

    invoke-direct {p2, p1}, Ldb3;-><init>(Lmb3;)V

    move-object p1, p2

    .line 26
    :goto_2
    iput-object p1, p0, Lq01;->e:Lmb3;

    .line 27
    iget-object p2, p0, Lq01;->c:Lmb3;

    iget-object p4, p0, Lq01;->d:Lmb3;

    .line 28
    new-instance v0, Lrk2;

    invoke-direct {v0, p1, p2, p4}, Lrk2;-><init>(Lmb3;Lmb3;Lmb3;)V

    .line 29
    instance-of p1, v0, Ldb3;

    if-eqz p1, :cond_3

    goto :goto_3

    .line 30
    :cond_3
    new-instance p1, Ldb3;

    invoke-direct {p1, v0}, Ldb3;-><init>(Lmb3;)V

    move-object v0, p1

    .line 31
    :goto_3
    iput-object v0, p0, Lq01;->f:Lmb3;

    .line 32
    invoke-static {p3}, Lfb3;->b(Ljava/lang/Object;)Lcb3;

    move-result-object v2

    iput-object v2, p0, Lq01;->g:Lmb3;

    .line 33
    iget-object v3, p0, Lq01;->e:Lmb3;

    iget-object v4, p0, Lq01;->a:Lmb3;

    iget-object v5, p0, Lq01;->c:Lmb3;

    iget-object v6, p0, Lq01;->d:Lmb3;

    .line 34
    new-instance p1, Lmk2;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lmk2;-><init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V

    .line 35
    instance-of p2, p1, Ldb3;

    if-eqz p2, :cond_4

    goto :goto_4

    .line 36
    :cond_4
    new-instance p2, Ldb3;

    invoke-direct {p2, p1}, Ldb3;-><init>(Lmb3;)V

    move-object p1, p2

    .line 37
    :goto_4
    iput-object p1, p0, Lq01;->h:Lmb3;

    return-void
.end method
