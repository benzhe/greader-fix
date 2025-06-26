.class public final Ltz;
.super Lk35;
.source "SourceFile"

# interfaces
.implements Lqy$a;
.implements Lqy$b;


# static fields
.field public static l:Lny$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lny$a<",
            "+",
            "Lu35;",
            "Lh35;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Landroid/os/Handler;

.field public final g:Lny$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lny$a<",
            "+",
            "Lu35;",
            "Lh35;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lj00;

.field public j:Lu35;

.field public k:Lwz;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lr35;->c:Lny$a;

    sput-object v0, Ltz;->l:Lny$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lj00;)V
    .locals 1

    .line 1
    sget-object v0, Ltz;->l:Lny$a;

    .line 2
    invoke-direct {p0}, Lk35;-><init>()V

    .line 3
    iput-object p1, p0, Ltz;->e:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Ltz;->f:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 5
    invoke-static {p3, p1}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Ltz;->i:Lj00;

    .line 6
    iget-object p1, p3, Lj00;->b:Ljava/util/Set;

    .line 7
    iput-object p1, p0, Ltz;->h:Ljava/util/Set;

    .line 8
    iput-object v0, p0, Ltz;->g:Lny$a;

    return-void
.end method


# virtual methods
.method public final Z(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Ltz;->j:Lu35;

    invoke-interface {p1}, Lny$f;->disconnect()V

    return-void
.end method

.method public final g0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltz;->k:Lwz;

    check-cast v0, Lzy$c;

    invoke-virtual {v0, p1}, Lzy$c;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final l0(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ltz;->j:Lu35;

    invoke-interface {p1, p0}, Lu35;->a(Ll35;)V

    return-void
.end method
