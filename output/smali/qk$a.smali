.class public Lqk$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lxm;

.field public c:Lpj;

.field public d:Landroidx/work/impl/WorkDatabase;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lik;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpj;Lxm;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/WorkerParameters$a;

    invoke-direct {v0}, Landroidx/work/WorkerParameters$a;-><init>()V

    iput-object v0, p0, Lqk$a;->g:Landroidx/work/WorkerParameters$a;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lqk$a;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lqk$a;->b:Lxm;

    .line 5
    iput-object p2, p0, Lqk$a;->c:Lpj;

    .line 6
    iput-object p4, p0, Lqk$a;->d:Landroidx/work/impl/WorkDatabase;

    .line 7
    iput-object p5, p0, Lqk$a;->e:Ljava/lang/String;

    return-void
.end method
