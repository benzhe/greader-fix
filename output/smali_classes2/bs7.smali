.class public final Lbs7;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Lorg/jsoup/nodes/Element;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lzr7;

.field public final synthetic f:Lvr7;


# direct methods
.method public constructor <init>(Lzr7;Lorg/jsoup/nodes/Element;Lvr7;)V
    .locals 0

    iput-object p1, p0, Lbs7;->e:Lzr7;

    iput-object p3, p0, Lbs7;->f:Lvr7;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lorg/jsoup/nodes/Element;

    const-string v0, "header"

    .line 2
    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lbs7;->e:Lzr7;

    iget-object v1, p0, Lbs7;->f:Lvr7;

    invoke-virtual {v0, p1, v1}, Lzr7;->i(Lorg/jsoup/nodes/Element;Lvr7;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
