.class public final Lg45;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg45$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg45$a;

    invoke-direct {v0}, Lg45$a;-><init>()V

    sput-object v0, Lg45;->a:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Ld55;

    invoke-direct {v0}, Ld55;-><init>()V

    sput-object v0, Lg45;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
