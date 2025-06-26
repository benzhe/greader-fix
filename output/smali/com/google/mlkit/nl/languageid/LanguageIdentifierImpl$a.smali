.class public final Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lfj4;

.field public final b:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

.field public final c:Leh6;


# direct methods
.method public constructor <init>(Lfj4;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Leh6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;->a:Lfj4;

    .line 3
    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;->b:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    .line 4
    iput-object p3, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;->c:Leh6;

    return-void
.end method
