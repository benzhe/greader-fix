.class public interface abstract Lyj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyj$b;
    }
.end annotation


# static fields
.field public static final a:Lyj$b$c;

.field public static final b:Lyj$b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyj$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyj$b$c;-><init>(Lyj$a;)V

    sput-object v0, Lyj;->a:Lyj$b$c;

    .line 2
    new-instance v0, Lyj$b$b;

    invoke-direct {v0, v1}, Lyj$b$b;-><init>(Lyj$a;)V

    sput-object v0, Lyj;->b:Lyj$b$b;

    return-void
.end method
