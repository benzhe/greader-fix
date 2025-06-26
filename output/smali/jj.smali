.class public Ljj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnj;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnj;

    .line 2
    sget-object v1, Lkj;->a:Llj;

    .line 3
    invoke-interface {v1}, Llj;->getWebkitToCompatConverter()Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    move-result-object v1

    invoke-direct {v0, v1}, Lnj;-><init>(Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;)V

    sput-object v0, Ljj;->a:Lnj;

    return-void
.end method
