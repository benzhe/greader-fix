.class public Ldt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lft;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lzt;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lps;

.field public final d:Lcu;

.field public final e:Lcv;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lis;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ldt;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lps;Lzt;Lcu;Lcv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldt;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Ldt;->c:Lps;

    .line 4
    iput-object p3, p0, Ldt;->a:Lzt;

    .line 5
    iput-object p4, p0, Ldt;->d:Lcu;

    .line 6
    iput-object p5, p0, Ldt;->e:Lcv;

    return-void
.end method


# virtual methods
.method public a(Lds;Las;Lar;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldt;->b:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v1, Lbt;

    invoke-direct {v1, p0, p1, p3, p2}, Lbt;-><init>(Ldt;Lds;Lar;Las;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
