.class public final synthetic Lfv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Liu0;

.field public final f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Liu0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfv0;->e:Liu0;

    iput-object p2, p0, Lfv0;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfv0;->e:Liu0;

    iget-object v1, p0, Lfv0;->f:Ljava/util/Map;

    const-string v2, "onGcacheInfoEvent"

    .line 2
    invoke-interface {v0, v2, v1}, Lod0;->x(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
