.class public Le27;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le27$d;,
        Le27$b;,
        Le27$e;,
        Le27$f;,
        Le27$c;
    }
.end annotation


# static fields
.field public static final o:Landroid/os/Handler;


# instance fields
.field public final a:Le27$c;

.field public final b:Le27$f;

.field public final c:Le27$b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj27;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/content/Context;

.field public final f:Lt17;

.field public final g:Lo17;

.field public final h:Ll27;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ll17;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Ls17;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Landroid/graphics/Bitmap$Config;

.field public m:Z

.field public volatile n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le27$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Le27$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Le27;->o:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lt17;Lo17;Le27$c;Le27$f;Ljava/util/List;Ll27;Landroid/graphics/Bitmap$Config;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lt17;",
            "Lo17;",
            "Le27$c;",
            "Le27$f;",
            "Ljava/util/List<",
            "Lj27;",
            ">;",
            "Ll27;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le27;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le27;->f:Lt17;

    .line 4
    iput-object p3, p0, Le27;->g:Lo17;

    .line 5
    iput-object p4, p0, Le27;->a:Le27$c;

    .line 6
    iput-object p5, p0, Le27;->b:Le27$f;

    const/4 p3, 0x0

    .line 7
    iput-object p3, p0, Le27;->l:Landroid/graphics/Bitmap$Config;

    .line 8
    new-instance p3, Ljava/util/ArrayList;

    const/4 p4, 0x7

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    new-instance p4, Lk27;

    invoke-direct {p4, p1}, Lk27;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p4, Lq17;

    invoke-direct {p4, p1}, Lq17;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p4, La27;

    invoke-direct {p4, p1}, La27;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p4, Lr17;

    invoke-direct {p4, p1}, Lr17;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p4, Lm17;

    invoke-direct {p4, p1}, Lm17;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p4, Lv17;

    invoke-direct {p4, p1}, Lv17;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p1, Lc27;

    iget-object p2, p2, Lt17;->d:Lu17;

    invoke-direct {p1, p2, p7}, Lc27;-><init>(Lu17;Ll27;)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le27;->d:Ljava/util/List;

    .line 17
    iput-object p7, p0, Le27;->h:Ll27;

    .line 18
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Le27;->i:Ljava/util/Map;

    .line 19
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Le27;->j:Ljava/util/Map;

    .line 20
    iput-boolean p9, p0, Le27;->m:Z

    .line 21
    iput-boolean p10, p0, Le27;->n:Z

    .line 22
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Le27;->k:Ljava/lang/ref/ReferenceQueue;

    .line 23
    new-instance p2, Le27$b;

    sget-object p3, Le27;->o:Landroid/os/Handler;

    invoke-direct {p2, p1, p3}, Le27$b;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object p2, p0, Le27;->c:Le27$b;

    .line 24
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Lp27;->a()V

    .line 2
    iget-object v0, p0, Le27;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll17;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ll17;->a()V

    .line 4
    iget-object v1, p0, Le27;->f:Lt17;

    .line 5
    iget-object v1, v1, Lt17;->i:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Landroid/widget/ImageView;

    .line 8
    iget-object v0, p0, Le27;->j:Ljava/util/Map;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls17;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ls17;->a()V

    :cond_1
    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;Le27$d;Ll17;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-boolean v0, p3, Ll17;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p3, Ll17;->k:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Le27;->i:Ljava/util/Map;

    invoke-virtual {p3}, Ll17;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "Main"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p3, p1, p2}, Ll17;->b(Landroid/graphics/Bitmap;Le27$d;)V

    .line 5
    iget-boolean p1, p0, Le27;->n:Z

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p3, Ll17;->b:Lh27;

    invoke-virtual {p1}, Lh27;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "completed"

    invoke-static {v0, p3, p1, p2}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "LoadedFrom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 8
    :cond_3
    invoke-virtual {p3, p4}, Ll17;->c(Ljava/lang/Exception;)V

    .line 9
    iget-boolean p1, p0, Le27;->n:Z

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p3, Ll17;->b:Lh27;

    invoke-virtual {p1}, Lh27;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "errored"

    invoke-static {v0, p3, p1, p2}, Lp27;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Ll17;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ll17;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le27;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Le27;->a(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Le27;->i:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, Le27;->f:Lt17;

    .line 6
    iget-object v0, v0, Lt17;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Le27;->g:Lo17;

    invoke-interface {v0, p1}, Lo17;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le27;->h:Ll27;

    .line 3
    iget-object v0, v0, Ll27;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le27;->h:Ll27;

    .line 5
    iget-object v0, v0, Ll27;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object p1
.end method
