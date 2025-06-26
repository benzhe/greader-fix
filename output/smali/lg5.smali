.class public final synthetic Llg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ljava/util/Map$Entry;

.field public final f:Lko5;


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;Lko5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llg5;->e:Ljava/util/Map$Entry;

    iput-object p2, p0, Llg5;->f:Lko5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Llg5;->e:Ljava/util/Map$Entry;

    iget-object v1, p0, Llg5;->f:Lko5;

    .line 1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llo5;

    invoke-interface {v0, v1}, Llo5;->a(Lko5;)V

    return-void
.end method
