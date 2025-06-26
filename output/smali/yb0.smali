.class public final Lyb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxb0;


# instance fields
.field public final synthetic a:Lxs0;


# direct methods
.method public constructor <init>(Lxs0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyb0;->a:Lxs0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lyb0;->a:Lxs0;

    invoke-virtual {v0, p1}, Lxs0;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lyb0;->a:Lxs0;

    new-instance v1, Laf0;

    invoke-direct {v1, p1}, Laf0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    return-void
.end method
