.class public final synthetic Law3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgw3;


# instance fields
.field public final a:Lyv3;


# direct methods
.method public constructor <init>(Lyv3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law3;->a:Lyv3;

    return-void
.end method


# virtual methods
.method public final k()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Law3;->a:Lyv3;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lyv3;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v0, Lyv3;->c:Ljava/lang/String;

    invoke-static {v1, v0}, La24;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
