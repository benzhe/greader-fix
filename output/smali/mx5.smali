.class public final synthetic Lmx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final e:Lmx5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmx5;

    invoke-direct {v0}, Lmx5;-><init>()V

    sput-object v0, Lmx5;->e:Lmx5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
