.class public final synthetic Lya1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd1;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lya1;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lya1;->a:Landroid/content/Context;

    check-cast p1, Lua1;

    .line 2
    invoke-interface {p1, v0}, Lua1;->s(Landroid/content/Context;)V

    return-void
.end method
