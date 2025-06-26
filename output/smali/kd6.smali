.class public Lkd6;
.super Lde6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde6<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lod6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lde6;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leg6;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Leg6;->Q()Lfg6;

    move-result-object v0

    sget-object v1, Lfg6;->m:Lfg6;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Leg6;->E()V

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Leg6;->w()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Lgg6;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Number;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lgg6;->m()Lgg6;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Lod6;->b(D)V

    .line 5
    invoke-virtual {p1, p2}, Lgg6;->C(Ljava/lang/Number;)Lgg6;

    :goto_0
    return-void
.end method
