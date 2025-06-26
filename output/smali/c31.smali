.class public final synthetic Lc31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ld31;

.field public final f:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ld31;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc31;->e:Ld31;

    iput-object p2, p0, Lc31;->f:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc31;->e:Ld31;

    iget-object v1, p0, Lc31;->f:Lorg/json/JSONObject;

    .line 1
    iget-object v0, v0, Ld31;->e:Lxw0;

    const-string v2, "AFMA_updateActiveView"

    invoke-interface {v0, v2, v1}, Lzd0;->Z(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
