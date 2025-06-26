.class public Lpl/droidsonroids/gif/GifTextureView$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/droidsonroids/gif/GifTextureView$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lpl/droidsonroids/gif/GifTextureView;

.field public final synthetic f:Lpl/droidsonroids/gif/GifTextureView$b;


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/GifTextureView$b;Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView$b$a;->f:Lpl/droidsonroids/gif/GifTextureView$b;

    iput-object p2, p0, Lpl/droidsonroids/gif/GifTextureView$b$a;->e:Lpl/droidsonroids/gif/GifTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b$a;->e:Lpl/droidsonroids/gif/GifTextureView;

    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b$a;->f:Lpl/droidsonroids/gif/GifTextureView$b;

    .line 2
    iget-object v1, v1, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    sget-object v2, Lpl/droidsonroids/gif/GifTextureView;->k:[Landroid/widget/ImageView$ScaleType;

    .line 4
    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->c(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method
