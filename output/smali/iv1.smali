.class public final synthetic Liv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lmf0;


# direct methods
.method public constructor <init>(Lmf0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liv1;->a:Lmf0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 1

    .line 1
    iget-object v0, p0, Liv1;->a:Lmf0;

    check-cast p1, Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0, p1}, Lmf0;->b(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1
.end method
