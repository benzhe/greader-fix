.class public Lh77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ld77;


# direct methods
.method public constructor <init>(Ld77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh77;->e:Ld77;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh77;->e:Ld77;

    .line 2
    iget-object v0, v0, Ld77;->j:Lz27;

    .line 3
    sget-object v1, Lz27$a;->f:Lz27$a;

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Lz27;->a(Lz27$a;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lh77;->e:Ld77;

    .line 5
    iget-object v1, v0, Ld77;->e:Ld77$e;

    .line 6
    check-cast v1, Lx77;

    .line 7
    iget-object v2, v1, Lx77;->b:Lq77$u;

    iget-object v2, v2, Lq77$u;->i:Lq77;

    .line 8
    iget-object v2, v2, Lq77;->B:Ljava/util/Set;

    .line 9
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, v1, Lx77;->b:Lq77$u;

    iget-object v2, v2, Lq77$u;->i:Lq77;

    .line 11
    iget-object v2, v2, Lq77;->O:Lv37;

    .line 12
    iget-object v2, v2, Lv37;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v0}, Lv37;->b(Ljava/util/Map;Lx37;)V

    .line 13
    iget-object v0, v1, Lx77;->b:Lq77$u;

    iget-object v0, v0, Lq77$u;->i:Lq77;

    invoke-static {v0}, Lq77;->p(Lq77;)V

    return-void
.end method
