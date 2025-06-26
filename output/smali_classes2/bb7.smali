.class public final Lbb7;
.super Ld47;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld47;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc47$d;)Lc47;
    .locals 1

    .line 1
    new-instance v0, Lab7;

    invoke-direct {v0, p1}, Lab7;-><init>(Lc47$d;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "round_robin"

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/util/Map;)Ll47$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ll47$b;"
        }
    .end annotation

    .line 1
    new-instance p1, Ll47$b;

    const-string v0, "no service config"

    invoke-direct {p1, v0}, Ll47$b;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
