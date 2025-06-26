.class public final synthetic Lw40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgt2;


# instance fields
.field public final a:Lu40;


# direct methods
.method public constructor <init>(Lu40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw40;->a:Lu40;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lw40;->a:Lu40;

    .line 1
    iget-object v0, v0, Lu40;->e:Landroid/content/SharedPreferences;

    const-string v1, "flag_configuration"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
