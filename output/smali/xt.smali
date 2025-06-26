.class public Lxt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lcu;

.field public final c:Lzt;

.field public final d:Lcv;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcu;Lzt;Lcv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxt;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lxt;->b:Lcu;

    .line 4
    iput-object p3, p0, Lxt;->c:Lzt;

    .line 5
    iput-object p4, p0, Lxt;->d:Lcv;

    return-void
.end method
