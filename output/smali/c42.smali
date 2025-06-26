.class public final Lc42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llz1<",
        "Lvi0;",
        "Lg12;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Li52;


# direct methods
.method public constructor <init>(Li52;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc42;->a:Li52;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lmz1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lmz1<",
            "Lvi0;",
            "Lg12;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lc42;->a:Li52;

    invoke-virtual {p2, p1}, Li52;->a(Ljava/lang/String;)Lvi0;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lg12;

    invoke-direct {v0}, Lg12;-><init>()V

    .line 3
    new-instance v1, Lmz1;

    invoke-direct {v1, p2, v0, p1}, Lmz1;-><init>(Ljava/lang/Object;Llb1;Ljava/lang/String;)V

    return-object v1
.end method
