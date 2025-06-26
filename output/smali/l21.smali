.class public final Ll21;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lqf0;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Lq21;

.field public final e:Lkb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkb0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lkb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkb0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lqf0;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk21;

    invoke-direct {v0, p0}, Lk21;-><init>(Ll21;)V

    iput-object v0, p0, Ll21;->e:Lkb0;

    .line 3
    new-instance v0, Lm21;

    invoke-direct {v0, p0}, Lm21;-><init>(Ll21;)V

    iput-object v0, p0, Ll21;->f:Lkb0;

    .line 4
    iput-object p1, p0, Ll21;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Ll21;->b:Lqf0;

    .line 6
    iput-object p3, p0, Ll21;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static b(Ll21;Ljava/util/Map;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "hashCode"

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Ll21;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Lq21;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ll21;->b:Lqf0;

    iget-object v1, p0, Ll21;->e:Lkb0;

    .line 2
    invoke-virtual {v0}, Lqf0;->a()V

    .line 3
    iget-object v2, v0, Lqf0;->b:Law2;

    new-instance v3, Lrf0;

    const-string v4, "/updateActiveView"

    invoke-direct {v3, v4, v1}, Lrf0;-><init>(Ljava/lang/String;Lkb0;)V

    .line 4
    sget-object v1, Lms0;->f:Lzv2;

    .line 5
    invoke-static {v2, v3, v1}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v2

    iput-object v2, v0, Lqf0;->b:Law2;

    .line 6
    iget-object v0, p0, Ll21;->b:Lqf0;

    iget-object v2, p0, Ll21;->f:Lkb0;

    .line 7
    invoke-virtual {v0}, Lqf0;->a()V

    .line 8
    iget-object v3, v0, Lqf0;->b:Law2;

    new-instance v4, Lrf0;

    const-string v5, "/untrackActiveViewUnit"

    invoke-direct {v4, v5, v2}, Lrf0;-><init>(Ljava/lang/String;Lkb0;)V

    .line 9
    invoke-static {v3, v4, v1}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v1

    iput-object v1, v0, Lqf0;->b:Law2;

    .line 10
    iput-object p1, p0, Ll21;->d:Lq21;

    return-void
.end method
