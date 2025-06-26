.class public final synthetic Lne2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Loe2;


# direct methods
.method public constructor <init>(Loe2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lne2;->e:Loe2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lne2;->e:Loe2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v2, v0, Loe2;->a:Lqm0;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, v0, Loe2;->b:Landroid/content/Context;

    iget-object v0, v0, Loe2;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Lqm0;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 5
    :cond_0
    new-instance v0, Lke2;

    invoke-direct {v0, v1}, Lke2;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
