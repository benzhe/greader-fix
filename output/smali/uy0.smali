.class public final Luy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lry0;


# direct methods
.method public constructor <init>(Lry0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Luy0;->a:Lry0;

    return-void
.end method

.method public static a(Lry0;)Landroid/content/Context;
    .locals 1

    .line 1
    iget-object p0, p0, Lry0;->b:Landroid/content/Context;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Luy0;->a:Lry0;

    invoke-static {v0}, Luy0;->a(Lry0;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
