.class public Lz77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ld77;

.field public final synthetic f:Lq77$u;


# direct methods
.method public constructor <init>(Lq77$u;Ld77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz77;->f:Lq77$u;

    iput-object p2, p0, Lz77;->e:Ld77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz77;->f:Lq77$u;

    iget-object v0, v0, Lq77$u;->i:Lq77;

    .line 2
    iget-object v0, v0, Lq77;->O:Lv37;

    .line 3
    iget-object v1, p0, Lz77;->e:Ld77;

    .line 4
    iget-object v0, v0, Lv37;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Lv37;->a(Ljava/util/Map;Lx37;)V

    .line 5
    iget-object v0, p0, Lz77;->f:Lq77$u;

    iget-object v0, v0, Lq77$u;->i:Lq77;

    .line 6
    iget-object v0, v0, Lq77;->B:Ljava/util/Set;

    .line 7
    iget-object v1, p0, Lz77;->e:Ld77;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
