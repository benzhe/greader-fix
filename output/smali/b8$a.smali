.class public Lb8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb8;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/graphics/Typeface;

.field public final synthetic f:Lb8;


# direct methods
.method public constructor <init>(Lb8;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb8$a;->f:Lb8;

    iput-object p2, p0, Lb8$a;->e:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb8$a;->f:Lb8;

    iget-object v1, p0, Lb8$a;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lb8;->d(Landroid/graphics/Typeface;)V

    return-void
.end method
