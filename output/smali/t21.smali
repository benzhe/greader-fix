.class public final synthetic Lt21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lxw0;

.field public final f:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lxw0;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt21;->e:Lxw0;

    iput-object p2, p0, Lt21;->f:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt21;->e:Lxw0;

    iget-object v1, p0, Lt21;->f:Lorg/json/JSONObject;

    const-string v2, "AFMA_updateActiveView"

    .line 2
    invoke-interface {v0, v2, v1}, Lzd0;->Z(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
