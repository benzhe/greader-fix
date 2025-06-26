.class public final Lje2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lhe2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lkr0;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/content/pm/PackageInfo;

.field public final e:I


# direct methods
.method public constructor <init>(Lkr0;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/pm/PackageInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lje2;->a:Lkr0;

    .line 3
    iput-object p2, p0, Lje2;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lje2;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lje2;->d:Landroid/content/pm/PackageInfo;

    .line 6
    iput p5, p0, Lje2;->e:I

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lhe2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lje2;->a:Lkr0;

    iget-object v1, p0, Lje2;->c:Ljava/lang/String;

    iget-object v2, p0, Lje2;->d:Landroid/content/pm/PackageInfo;

    iget v3, p0, Lje2;->e:I

    .line 2
    invoke-interface {v0, v1, v2, v3}, Lkr0;->a(Ljava/lang/String;Landroid/content/pm/PackageInfo;I)Law2;

    move-result-object v0

    sget-object v1, Lie2;->a:Lvs2;

    iget-object v2, p0, Lje2;->b:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {v0, v1, v2}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lme2;

    invoke-direct {v2, p0}, Lme2;-><init>(Lje2;)V

    iget-object v3, p0, Lje2;->b:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v0, v1, v2, v3}, Lvt2;->n(Law2;Ljava/lang/Class;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    return-object v0
.end method
