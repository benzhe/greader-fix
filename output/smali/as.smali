.class public abstract Las;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Las$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Las;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/Integer;
.end method

.method public abstract d()Lzr;
.end method

.method public abstract e()J
.end method

.method public final f(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Las;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()J
.end method

.method public i()Las$a;
    .locals 3

    .line 1
    new-instance v0, Lvr$b;

    invoke-direct {v0}, Lvr$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Las;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvr$b;->f(Ljava/lang/String;)Las$a;

    .line 3
    invoke-virtual {p0}, Las;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lvr$b;->b:Ljava/lang/Integer;

    .line 5
    invoke-virtual {p0}, Las;->d()Lzr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvr$b;->d(Lzr;)Las$a;

    .line 6
    invoke-virtual {p0}, Las;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lvr$b;->e(J)Las$a;

    .line 7
    invoke-virtual {p0}, Las;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lvr$b;->g(J)Las$a;

    new-instance v1, Ljava/util/HashMap;

    .line 8
    invoke-virtual {p0}, Las;->b()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 9
    iput-object v1, v0, Lvr$b;->f:Ljava/util/Map;

    return-object v0
.end method
