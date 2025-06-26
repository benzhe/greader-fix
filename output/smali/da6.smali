.class public Lda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga6;


# instance fields
.field public final a:Lf45;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf45<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf45;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf45<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lda6;->a:Lf45;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Lma6;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lma6;->f()Lla6$a;

    move-result-object v0

    sget-object v1, Lla6$a;->g:Lla6$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lma6;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lma6;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    .line 4
    :cond_2
    :goto_1
    iget-object v0, p0, Lda6;->a:Lf45;

    invoke-virtual {p1}, Lma6;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf45;->b(Ljava/lang/Object;)Z

    return v3
.end method
