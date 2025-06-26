.class public final Li01;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/ads/zzvt;

.field public final c:Ljava/lang/String;

.field public d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lcom/google/android/gms/internal/ads/zzvt;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lw52;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lq62;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lih2;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lpz0;


# direct methods
.method public constructor <init>(Lpz0;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvt;Loz0;)V
    .locals 8

    .line 1
    iput-object p1, p0, Li01;->i:Lpz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li01;->a:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Li01;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 4
    iput-object p3, p0, Li01;->c:Ljava/lang/String;

    .line 5
    new-instance p3, Lfb3;

    const-string p5, "instance cannot be null"

    .line 6
    invoke-static {p2, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-direct {p3, p2}, Lfb3;-><init>(Ljava/lang/Object;)V

    .line 8
    iput-object p3, p0, Li01;->d:Lmb3;

    .line 9
    new-instance p2, Lfb3;

    .line 10
    invoke-static {p4, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-direct {p2, p4}, Lfb3;-><init>(Ljava/lang/Object;)V

    .line 12
    iput-object p2, p0, Li01;->e:Lmb3;

    .line 13
    iget-object p2, p1, Lpz0;->n:Lmb3;

    .line 14
    new-instance p3, Ll62;

    invoke-direct {p3, p2}, Ll62;-><init>(Lmb3;)V

    .line 15
    sget-object p2, Ldb3;->c:Ljava/lang/Object;

    .line 16
    instance-of p2, p3, Ldb3;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance p2, Ldb3;

    invoke-direct {p2, p3}, Ldb3;-><init>(Lmb3;)V

    move-object p3, p2

    .line 18
    :goto_0
    iput-object p3, p0, Li01;->f:Lmb3;

    .line 19
    sget-object p2, Ls62;->a:Lp62;

    .line 20
    instance-of p3, p2, Ldb3;

    if-eqz p3, :cond_1

    move-object v6, p2

    goto :goto_1

    .line 21
    :cond_1
    new-instance p3, Ldb3;

    invoke-direct {p3, p2}, Ldb3;-><init>(Lmb3;)V

    move-object v6, p3

    .line 22
    :goto_1
    iput-object v6, p0, Li01;->g:Lmb3;

    .line 23
    iget-object v1, p0, Li01;->d:Lmb3;

    .line 24
    iget-object v2, p1, Lpz0;->o:Lmb3;

    .line 25
    iget-object v3, p0, Li01;->e:Lmb3;

    .line 26
    iget-object v4, p1, Lpz0;->H:Lmb3;

    .line 27
    iget-object v5, p0, Li01;->f:Lmb3;

    sget-object v7, Lol2;->a:Lml2;

    .line 28
    new-instance p1, Llh2;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Llh2;-><init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V

    .line 29
    instance-of p2, p1, Ldb3;

    if-eqz p2, :cond_2

    goto :goto_2

    .line 30
    :cond_2
    new-instance p2, Ldb3;

    invoke-direct {p2, p1}, Ldb3;-><init>(Lmb3;)V

    move-object p1, p2

    .line 31
    :goto_2
    iput-object p1, p0, Li01;->h:Lmb3;

    return-void
.end method
