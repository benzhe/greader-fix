.class public Lkb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkb$c;,
        Lkb$d;,
        Lkb$a;,
        Lkb$b;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lkb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm4<",
            "Lkb$b;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkb$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lkb$a;

.field public d:Lkb$c;

.field public e:J

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lkb;->g:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm4;

    invoke-direct {v0}, Lm4;-><init>()V

    iput-object v0, p0, Lkb;->a:Lm4;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkb;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lkb$a;

    invoke-direct {v0, p0}, Lkb$a;-><init>(Lkb;)V

    iput-object v0, p0, Lkb;->c:Lkb$a;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lkb;->e:J

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lkb;->f:Z

    return-void
.end method

.method public static a()Lkb;
    .locals 2

    .line 1
    sget-object v0, Lkb;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lkb;

    invoke-direct {v1}, Lkb;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkb;

    return-object v0
.end method
