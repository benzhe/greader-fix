.class public final Lcf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf$b;,
        Lcf$c;
    }
.end annotation


# static fields
.field public static final a:Lcf$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcf$a;

    invoke-direct {v0}, Lcf$a;-><init>()V

    sput-object v0, Lcf;->a:Lcf$b;

    return-void
.end method
