.class public final Li47$h;
.super Li47$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li47;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li47$f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Li47$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLi47$i;Li47$a;)V
    .locals 1

    const/4 p4, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Li47$f;-><init>(Ljava/lang/String;ZLjava/lang/Object;Li47$a;)V

    const-string p2, "-bin"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    const-string v0, "ASCII header is named %s.  Only binary headers may end with %s"

    .line 3
    invoke-static {p4, v0, p1, p2}, Lc50;->p(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "marshaller"

    .line 4
    invoke-static {p3, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Li47$h;->f:Li47$i;

    return-void
.end method


# virtual methods
.method public c([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li47$h;->f:Li47$i;

    invoke-interface {v0, p1}, Li47$i;->b([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li47$h;->f:Li47$i;

    invoke-interface {v0, p1}, Li47$i;->a(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method
