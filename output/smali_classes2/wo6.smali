.class public final Lwo6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lgo6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgo6;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "promoCodeRepository"

    invoke-static {p2, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lwo6;->a:Lgo6;

    return-void
.end method
