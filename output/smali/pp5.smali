.class public Lpp5;
.super Lop5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lop5;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le45;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le45<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le55;

    invoke-direct {v0}, Le55;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Le55;->s(Ljava/lang/Object;)V

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Ljq5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq5<",
            "Ltp5;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ltp5;->b:Ltp5;

    invoke-virtual {p1, v0}, Ljq5;->a(Ljava/lang/Object;)V

    return-void
.end method
