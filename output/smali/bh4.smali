.class public final Lbh4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbh4$a;
    }
.end annotation


# static fields
.field public static final b:Lsf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsf5<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lbh4$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lbh4;

    .line 2
    invoke-static {v0}, Lsf5;->a(Ljava/lang/Class;)Lsf5$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 3
    new-instance v2, Lig5;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v0, v2}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v1, Lkh6;

    .line 5
    new-instance v2, Lig5;

    invoke-direct {v2, v1, v3, v4}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v0, v2}, Lsf5$b;->a(Lig5;)Lsf5$b;

    const-class v1, Lbh4$a;

    .line 7
    new-instance v2, Lig5;

    invoke-direct {v2, v1, v3, v4}, Lig5;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v0, v2}, Lsf5$b;->a(Lig5;)Lsf5$b;

    sget-object v1, Ldh4;->a:Lwf5;

    .line 9
    invoke-virtual {v0, v1}, Lsf5$b;->d(Lwf5;)Lsf5$b;

    .line 10
    invoke-virtual {v0}, Lsf5$b;->b()Lsf5;

    move-result-object v0

    sput-object v0, Lbh4;->b:Lsf5;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkh6;Lbh4$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 5
    invoke-static {p1}, Ldh6;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lbh4;->a:Lbh4$a;

    .line 7
    invoke-static {}, Lgh6;->a()Lgh6;

    move-result-object p1

    sget-object p3, Lah4;->e:Ljava/util/concurrent/Callable;

    .line 8
    invoke-virtual {p1, p3}, Lgh6;->b(Ljava/util/concurrent/Callable;)Le45;

    .line 9
    invoke-static {}, Lgh6;->a()Lgh6;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance p3, Lch4;

    invoke-direct {p3, p2}, Lch4;-><init>(Lkh6;)V

    .line 11
    invoke-virtual {p1, p3}, Lgh6;->b(Ljava/util/concurrent/Callable;)Le45;

    return-void
.end method
