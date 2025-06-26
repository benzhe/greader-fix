.class public final Lsg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsg$b;,
        Lsg$a;
    }
.end annotation


# instance fields
.field public a:Lo3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3<",
            "Ljava/lang/String;",
            "Lsg$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/os/Bundle;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo3;

    invoke-direct {v0}, Lo3;-><init>()V

    iput-object v0, p0, Lsg;->a:Lo3;

    return-void
.end method
