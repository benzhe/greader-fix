.class public final synthetic Lvl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgy0;


# instance fields
.field public final a:Lpl1;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lpl1;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvl1;->a:Lpl1;

    iput-object p2, p0, Lvl1;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    iget-object p1, p0, Lvl1;->a:Lpl1;

    iget-object v0, p0, Lvl1;->b:Ljava/util/Map;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "messageType"

    const-string v3, "validatorHtmlLoaded"

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "id"

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Lpl1;->b:Lio1;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, v1}, Lio1;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
