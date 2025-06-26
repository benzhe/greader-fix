.class public final synthetic Lxe2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lye2;


# direct methods
.method public constructor <init>(Lye2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxe2;->e:Lye2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lxe2;->e:Lye2;

    .line 2
    new-instance v1, Lve2;

    iget-object v2, v0, Lye2;->a:Lpo3;

    iget-object v0, v0, Lye2;->c:Landroid/content/Context;

    invoke-interface {v2, v0}, Lpo3;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lve2;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method
