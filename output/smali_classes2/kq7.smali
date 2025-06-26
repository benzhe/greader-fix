.class public final Lkq7;
.super Lnk7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkq7$a;
    }
.end annotation


# static fields
.field public static final f:Lkq7$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkq7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkq7$a;-><init>(Lgm7;)V

    sput-object v0, Lkq7;->f:Lkq7$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lkq7;->f:Lkq7$a;

    invoke-direct {p0, v0}, Lnk7;-><init>(Lrk7$b;)V

    return-void
.end method
