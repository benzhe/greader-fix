.class public final Lx12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llz1<",
        "Lzl2;",
        "Lg12;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lnq1;


# direct methods
.method public constructor <init>(Lnq1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx12;->a:Lnq1;

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
            "Lzl2;",
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
    iget-object v0, p0, Lx12;->a:Lnq1;

    invoke-virtual {v0, p1, p2}, Lnq1;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lzl2;

    move-result-object p2

    .line 2
    new-instance v0, Lg12;

    invoke-direct {v0}, Lg12;-><init>()V

    .line 3
    new-instance v1, Lmz1;

    invoke-direct {v1, p2, v0, p1}, Lmz1;-><init>(Ljava/lang/Object;Llb1;Ljava/lang/String;)V

    return-object v1
.end method
