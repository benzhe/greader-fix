.class public final synthetic Lwb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final e:Lwb6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwb6;

    invoke-direct {v0}, Lwb6;-><init>()V

    sput-object v0, Lwb6;->e:Lwb6;

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
