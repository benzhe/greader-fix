.class public interface abstract Le27$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le27;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# static fields
.field public static final a:Le27$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le27$f$a;

    invoke-direct {v0}, Le27$f$a;-><init>()V

    sput-object v0, Le27$f;->a:Le27$f;

    return-void
.end method
