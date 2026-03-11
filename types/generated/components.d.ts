import type { Schema, Struct } from '@strapi/strapi';

export interface RepeatablePets extends Struct.ComponentSchema {
  collectionName: 'components_repeatable_pets';
  info: {
    displayName: 'Pets';
  };
  attributes: {
    birthDate: Schema.Attribute.Date;
    breed: Schema.Attribute.Enumeration<
      [
        'American Bulldog',
        'Golden Retriever',
        'Labrador Retriever',
        'Beagle',
        'German Shepherd',
        'Pug',
        'Pomeranian',
        'Shihtzu',
        'Rottweilers',
        'Cocker Spaniel',
        'Siberian Husky',
        'Great Dane',
        'Dachshunds',
        'Doberman',
        'Poodle',
        'Saint Bernard',
        'Chow Chow',
        'Others',
        'French Bulldog',
      ]
    >;
    gender: Schema.Attribute.Enumeration<['Male', 'Female']>;
    name: Schema.Attribute.String;
    petType: Schema.Attribute.Enumeration<['Dog', 'Cat', 'Others']>;
  };
}

export interface SharedSeo extends Struct.ComponentSchema {
  collectionName: 'components_shared_seos';
  info: {
    description: '';
    displayName: 'Seo';
    icon: 'allergies';
    name: 'Seo';
  };
  attributes: {
    metaDescription: Schema.Attribute.Text & Schema.Attribute.Required;
    metaTitle: Schema.Attribute.String & Schema.Attribute.Required;
    shareImage: Schema.Attribute.Media<'images'>;
  };
}

declare module '@strapi/strapi' {
  export module Public {
    export interface ComponentSchemas {
      'repeatable.pets': RepeatablePets;
      'shared.seo': SharedSeo;
    }
  }
}
