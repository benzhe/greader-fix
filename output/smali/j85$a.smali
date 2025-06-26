.class public Lj85$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx95$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj85;->o(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj85;


# direct methods
.method public constructor <init>(Lj85;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj85$a;->a:Lj85;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj85$a;->a:Lj85;

    invoke-virtual {v0, p1}, Lj85;->r(Landroid/graphics/Typeface;)V

    return-void
.end method
