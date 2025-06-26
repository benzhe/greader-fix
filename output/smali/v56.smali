.class public Lv56;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv56;->a:Landroid/app/Application;

    .line 3
    iput-object p2, p0, Lv56;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lik6;)Lrb7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lii6;",
            ">(",
            "Lik6<",
            "TT;>;)",
            "Lrb7<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lu56;

    invoke-direct {v0, p0, p1}, Lu56;-><init>(Lv56;Lik6;)V

    .line 2
    new-instance p1, Lgg7;

    invoke-direct {p1, v0}, Lgg7;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p1
.end method

.method public b(Lii6;)Lhb7;
    .locals 1

    .line 1
    new-instance v0, Lt56;

    invoke-direct {v0, p0, p1}, Lt56;-><init>(Lv56;Lii6;)V

    .line 2
    new-instance p1, Lae7;

    invoke-direct {p1, v0}, Lae7;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p1
.end method
